<div class="test-banner mb-0 card" style="padding-top:${configuration.PreenchimentoPelicula}px; padding-bottom:${configuration.PreenchimentoPelicula}px;">
    <lfr-editable id="ImagemDesktop" type="image" class="img-desktop d-none d-sm-block">
        <img src="" class="card-img" />
    </lfr-editable>
    <lfr-editable id="ImagemMobile" type="image" class="img-mobile d-sm-none">
        <img src="" class="card-img" />
    </lfr-editable>
    <div class="card-img-overlay bg-${configuration.backgroundColor.cssClass} row flex-column justify-content-center py-4 c-px-md-80">
        <div class="col-lg-5">
            <lfr-editable class="my-3" id="text01" type="rich-text">
                <span style="font-family: Unimed Sans; font-size: 16px; font-style: normal; font-weight: 600;">
                    Título
                </span>
            </lfr-editable>
            <lfr-editable id="text02" type="rich-text">
                <span class="banner-title" style="font-family: Unimed Sans; font-size: 40px; font-style: normal; font-weight: 700;">
                    Mensagem
                </span>
            </lfr-editable>
            <lfr-editable class="my-3" id="link01" type="link" style="font-size: 18px; font-weight: 600;">
                <a href="#" class="btn btn-primary bg-${configuration.buttonColor.cssClass} text-${configuration.buttonTextColor.cssClass}" data-lfr-editable-id="button-link" data-lfr-editable-type="link">Acesse</a>
            </lfr-editable>
        </div>
    </div>
</div>
<style>
.test-banner .card-img {
    height: calc(450px + ${configuration.PreenchimentoPelicula}px);
}

.test-banner .card-img:before {
    background-color: var(--${configuration.backgroundColor.cssClass});
}

@media only screen and (max-width: 767px) {
    .test-banner .card-img {
        height: calc(250px + ${configuration.PreenchimentoPelicula}px);
        background-image: url('path/to/mobile-image.jpg');
    }
}

@media only screen and (min-width: 300px) {
    .test-banner .card-img {
        background-image: url('path/to/desktop-image.jpg');
    }
}