<div class="main-content" id="main-content">
    <div class="container">
        <div class="inner-xs">
            <div class="page-header">
                <h2 class="page-title">
                  $Name Products
                </h2>
            </div>
        </div>
        <% if $Children %>

        <div class="table-responsive inner-bottom-xs inner-top-xs">
            <table class="table table-bordered table-striped compare-list">
                <thead>
                    <tr>
                        <th>Name</th>
                        <% loop $Children %>
                        <td class="text-center">
                            <div class="image-wrap">
                                <% if not $Photo %>
                                <p>(no photo)</p>
                                <% else %>
                                <img width="220" height="154" alt="Iconia W700" class="attachment-yith-woocompare-image" src="$Photo.FillMax(400,400).URL">
                                <% end_if %>

                            </div>
                            <a href="$Link"><p><strong>$Title</strong></p></a>
                        </td>
                        <% end_loop %>
                    </tr>
                </thead>
                <tbody>
                    <tr class="comparison-item description">
                        <th>Description</th>
                        <% loop $Children %>
                        <td class="comparison-item-cell odd product_39">
                            <p>$Description</p>
                        </td>
                        <% end_loop %>
                    </tr>
                </tbody>
            </table>
        </div>
        <% else %>
        <h1 class="page-title text-center">No item available</h1>
        <% end_if %>
    </div>
</div>
