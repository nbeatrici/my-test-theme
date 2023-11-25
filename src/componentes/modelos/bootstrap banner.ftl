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
                <span style="color: var(--ct-as-claro, #ae23ae); font-family: Unimed Sans; font-size: 16px; font-style: normal; font-weight: 600;">
                    título pequeno
                </span>
            </lfr-editable>
            <lfr-editable id="text02" type="rich-text">
                <span class="banner-title" style="font-family: Unimed Sans; font-size: 40px; font-style: normal; font-weight: 700;">
                    texto para descrição
                </span>
            </lfr-editable>
            <lfr-editable class="my-3" id="link01" type="link" style="font-size: 18px; font-weight: 600;">
                <a href="#" class="btn btn-lg bg-${configuration.buttonColor.cssClass} text-${configuration.buttonTextColor.cssClass}" style="font-family: Unimed Sans; font-size: 18px; font-style: normal; font-weight: 600;">
                    link
                </a>
            </lfr-editable>
        </div>
    </div>
</div>
<style>
.test-banner .card-img {
    height: calc(450px + ${configuration.PreenchimentoPelicula}px);
}

.test-banner .card-img:before {
    background-color : var(--${configuration.backgroundColor.cssClass});
}
</style>