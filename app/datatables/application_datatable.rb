class ApplicationDatatable < AjaxDatatablesRails::ActiveRecord
    include GlobalHelper
    delegate :params, to: :@view
    @options = {}
    def initialize(view,option = {})
        @view = view
        @options = option
    end

    def as_json(options = {})
        {
            recordsTotal: count,
            recordsFiltered: total_entries,
            data: data
        }
    end

    private
        def option
            @options
        end
        def page
            params[:start].to_i / per_page + 1
        end

        def per_page
            params[:length].to_i > 0 ? params[:length].to_i : 10
        end

        def sort_column
            columns[params[:order]['0'][:column].to_i]
        end

        def sort_direction
            params[:order]['0'][:dir] == "desc" ? "desc" : "asc"
        end
end
