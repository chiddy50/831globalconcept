<% if $Products %>
    <% loop $Products %>
        <p>$Title</p>
    <% end_loop %>
<% else %>
<p>No Products found</p>
<% end_if %>


