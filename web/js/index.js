$(document).ready(function () {

    $(".logueo_ta").submit(function () {
        $(".texto_box_h").text('Validando Datos...').fadeIn(50);
        $(".overlay_log").show();
        this.timer = setTimeout(function () {
            $.ajax({
                type: 'POST',
                url: 'validar',
                data: $(".logueo_ta").serialize(),
                success: function (msg) {
                    $(".box_cargando").show().fadeTo(1000, 1, function () {

                        if (msg === '1')
                        {
                            $(".overlay_log").hide();
                            $(".box_cargando").removeClass("box-primary").addClass("box-success");
                            $(".texto_box_h").text('Usuario verificado!').fadeTo(1000, 1, function () {
                                $(".texto_box_h").text("Redireccionando...");
                                document.location = 'menu';
                            });
                        } else {
                            $(".overlay_log").hide();
                            $(".box_cargando").removeClass("box-primary").addClass("box-danger");
                            $(".texto_box_h").text("Usuario o clave incorrecto");
                        }


                    });

                }
            });
        }, 200);
        return false;
    });
});
