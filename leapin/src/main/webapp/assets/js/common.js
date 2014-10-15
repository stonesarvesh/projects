$(document).on(
		'click',
		'.addButton',
		function() {
			var last = $(".form-group.cc:last");
			var $template = $('#optionTemplate'), $clone = $template.clone()
					.removeClass('hide').addClass("cc").removeAttr('id').insertAfter(
							last), $option = $clone
					.find('[name="option[]"]');
			var i = 0;
			$(".course").each(function() {
				$(this).attr("name", "courses[" + i++ + "].name");
			});
			i = 0;
			$(".category").each(
					function() {
						$(this).attr("name",
								"courses[" + i++ + "].category");
					});

		});

// Remove button click handler
$(document).on('click', '.removeButton', function() {
	var $row = $(this).parents('.form-group');
	// Remove element containing the option
	$row.remove();
	var i = 0;
	$(".course").each(function() {
		$(this).attr("name", "courses[" + i++ + "].name");
	});
	i = 0;
	$(".category").each(
			function() {
				$(this).attr("name",
						"courses[" + i++ + "].category");
			});

});
