<div class="container py-4">
	<div class="row gx-1">
		[#list 1..configuration.numberOfCards as index]
		<div class="col-md-4">
			<div class="card">
				<img class="card-img-top" data-lfr-editable-id="card-img-${index}" data-lfr-editable-type="image" src="" alt="">
				<div class="card-body">
					<h5 class="card-title" data-lfr-editable-id="card-title-${index}" data-lfr-editable-type="text">Título</h5>
					<p class="card-text" data-lfr-editable-id="card-text-${index}" data-lfr-editable-type="text">Área para as informações do card.</p>
					<a href="#" class="btn btn-primary bg-${configuration.buttonColor.cssClass} text-${configuration.buttonTextColor.cssClass}" data-lfr-editable-id="button-link" data-lfr-editable-type="link">Botão</a>
				</div>
			</div>
		</div>
		[/#list]
	</div>
</div>