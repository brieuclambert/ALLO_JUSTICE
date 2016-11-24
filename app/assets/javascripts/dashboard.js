$(function(){
  $(".dashboard-tab").on("click", function(e){
    // Change active tab
    $(".dashboard-tab").removeClass("active");
    $(this).addClass("active");
    // Hide all tab-content (use class="hidden")
    $(".dashboard-tab-content").addClass("hidden");
    // Show target tab-content (use class="hidden")
    tabSelector = $(this).data("target");
    $(tabSelector).removeClass("hidden");
  });
});
