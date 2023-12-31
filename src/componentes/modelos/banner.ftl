<div class="banner mb-0 card border" style="padding-top:${configuration.PreenchimentoPelicula}px; padding-bottom:${configuration.PreenchimentoPelicula}px;">
    <lfr-editable id="ImagemDesktop" type="image" class="img-desktop d-none d-sm-block">
        <img src="" class="card-img" />
    </lfr-editable>
    <lfr-editable id="ImagemMobile" type="image" class="img-mobile d-sm-none">
        <img src="" class="card-img" />
    </lfr-editable>
    <div class="card-img-overlay row margin flex-column justify-content-center py-4 c-px-md-80 px-0">
        <div class="opacity bg-${configuration.backgroundColor.cssClass}"></div>
        <div class="z-index container">
            <div class="col-lg-5">
                <lfr-editable class="my-3 font-weight-light" id="text01" type="rich-text">
                    <span style="font-size: 16px; font-weight: 600;">
                        Mensagem
                    </span>
                </lfr-editable>
                <lfr-editable id="text02" type="rich-text">
                    <span class="banner-title font-weight-bold" style="font-size: 40px; font-weight: 700;">
                        Texto Principal
                    </span>
                </lfr-editable>
                <lfr-editable class="my-3" id="link01" type="link" style="font-size: 18px; font-weight: 600;">
                    <a href="#" class="btn btn-lg bg-${configuration.buttonColor.cssClass} text-${configuration.buttonTextColor.cssClass}" style="font-size: 18px; font-style: normal; font-weight: 600;">
                        Acesse
                    </a>
                </lfr-editable>
            </div>
        </div>
    </div>
</div>
<style>
.banner .card-img {
    height: calc(450px + ${configuration.PreenchimentoPelicula}px);
}
</style>