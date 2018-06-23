$(document).ready(function(){
	if(($("#label-msg").html()+"").trim() != ""){
		$("#notf").html($("#label-msg").html());
		$("#modal-notf").click();
	}
	
	$(".remove-line").click(function(){
		var linha = $(this);
		$("#modal-question").click();
		$("#question").html("Confirmar Exclusão?");
		$("#btn-confirm").click(function (){
		    $.ajax({
		        url: $(linha).attr("data-href"),
		        type: "POST",
		        async: false,
		        complete: function (resultado) {
					excluirLinha($(linha));
					$("#notf").html("Exclusão efetuada com sucesso!");
					$("#modal-notf").click();
		        }
		    });
		});
	});
	
	$(".ligar-item").click(function(){
		var linha = $(this);
		    $.ajax({
		        url: $(linha).attr("data-href"),
		        type: "POST",
		        async: false,
		        complete: function (resultado) {
		        }
		});
	});
	
	$(".desligar-item").click(function(){
		var linha = $(this);
		    $.ajax({
		        url: $(linha).attr("data-href"),
		        type: "POST",
		        async: false,
		        complete: function (resultado) {
		        }
		    });
	});
});

function excluirLinha(element){
	$(element).parent().parent().remove();
}