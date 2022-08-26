module ApplicationHelper
    def comment
    end

    #filter by ascending or descending order. Defaults to Published Date, Ascending
    def ascdesc(column, title = "published")
        title ||= column.titleize
        css_class = column == sort_column ? "current #{sort_direction}" : nil
        direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
        link_to title, {:sort => column, :direction => direction}, {:class => css_class}
    end

    def sort_column
        Book.column_names.include?(params[:sort]) ? params[:sort] : "published"
      end
    
      def sort_direction
        %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
      end
end
