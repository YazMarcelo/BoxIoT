$(document).ready(function(){
	$(".remove-line").click(function(){
		excluirLinha($(this));
	});
});

function excluirLinha(element){
	$(element).parent().parent().remove();
}