$(document).ready(function(){
	$(".remove-line").click(function(){
		var linha = $(this);
		$("#modal-excluir").click();
		$("#btn-confirm-question").click(function (){
		    $.ajax({
		        url: $(linha).attr("data-href"),
		        type: "POST",
		        async: false,
		        complete: function (resultado) {
					excluirLinha($(linha));
		            alert("complete");
		        }
		    });
		});
	});
});

function excluirLinha(element){
	$(element).parent().parent().remove();
}