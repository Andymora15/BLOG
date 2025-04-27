<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>La Estatua de la Libertad - Blog</title>
    <link rel="stylesheet" href="css/estilos.css">
</head>
<body>

<header>
    <h1>🌟 La Estatua de la Libertad 🌟</h1>
    <nav>
        <ul>
            <li><a href="#historia">Historia</a></li>
            <li><a href="#curiosidades">Curiosidades</a></li>
            <li><a href="#galeria">Galería</a></li>
            <li><a href="#datos">Datos Rápidos</a></li>
            <li><a href="#formulario">Evaluación</a></li>
        </ul>
    </nav>
</header>

<main>
    <section id="historia">
        <h2>Historia</h2>
        <p>La Estatua de la Libertad, uno de los símbolos más icónicos de los Estados Unidos, fue un regalo del pueblo francés para conmemorar el centenario de la independencia estadounidense y celebrar la amistad entre ambas naciones.</p>
        <p>Fue inaugurada el <strong>28 de octubre de 1886</strong> en la Isla de la Libertad, en la entrada del puerto de Nueva York. El escultor <strong>Frédéric Auguste Bartholdi</strong> diseñó la estatua, y la estructura interna de hierro fue obra de <strong>Gustave Eiffel</strong>, el mismo creador de la famosa Torre Eiffel.</p>
        <p>Para más información oficial puedes visitar <a href="https://es.wikipedia.org/wiki/Estatua_de_la_Libertad" target="_blank">Wikipedia</a>.</p>
    </section>

    <section id="curiosidades">
        <h2>Curiosidades</h2>
        <ol>
            <li>La estatua pesa alrededor de <strong>225 toneladas</strong>.</li>
            <li>Su color verde es producto de la oxidación del cobre que la recubre.</li>
            <li>Originalmente, la antorcha era de oro puro, pero se ha modificado varias veces.</li>
            <li>La estatua aparece en muchas películas famosas como "El Planeta de los Simios" y "X-Men".</li>
            <li>La corona tiene siete puntas que representan los siete mares y los siete continentes.</li>
        </ol>
    </section>

    <section id="galeria">
        <h2>Galería</h2>
        <div class="galeria">
            <img src="images/libertad1.jpeg" alt="Estatua de la Libertad" class="img-galeria">
            <img src="images/libertad2.jpeg" alt="Vista aérea de la Estatua" class="img-galeria">
            <img src="images/libertad3.jpeg" alt="Detalle de la antorcha" class="img-galeria">
        </div>

		<h2>Video sobre la Estatua de la Libertad</h2>
		<p>Conoce más detalles viendo este video:</p>

			<iframe width="560" height="315" src="https://www.youtube.com/embed/2lpSCmJGxd0" 
				title="YouTube video player" frameborder="0" 
				allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" 
				allowfullscreen style="border-radius: 10px; box-shadow: 0 0 15px #00f0ff;"></iframe>
        </div>
    </section>

    <section id="datos">
        <h2>Tabla de Datos Rápidos</h2>
        <table>
            <thead>
                <tr>
                    <th>Dato</th>
                    <th>Información</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Altura total</td>
                    <td>93 metros</td>
                </tr>
                <tr>
                    <td>Material principal</td>
                    <td>Cobre</td>
                </tr>
                <tr>
                    <td>Ubicación</td>
                    <td>Isla de la Libertad, Nueva York</td>
                </tr>
                <tr>
                    <td>Diseñador</td>
                    <td>Frédéric Auguste Bartholdi</td>
                </tr>
                <tr>
                    <td>Inauguración</td>
                    <td>28 de octubre de 1886</td>
                </tr>
            </tbody>
        </table>
    </section>

    <section id="formulario">
        <h2>Evaluación del Blog</h2>
        <form id="quizForm" onsubmit="return evaluarFormulario()">
            <ol>
                <li>
                    ¿En qué año fue inaugurada la Estatua de la Libertad?<br>
                    <input type="text" name="pregunta1">
                </li>
                <li>
                    ¿Qué país regaló la estatua a Estados Unidos?<br>
                    <input type="text" name="pregunta2">
                </li>
                <li>
                    ¿Quién diseñó la estructura interna?<br>
                    <input type="text" name="pregunta3">
                </li>
                <li>
                    ¿De qué material está recubierta la estatua?<br>
                    <input type="text" name="pregunta4">
                </li>
                <li>
                    ¿Cuántas puntas tiene la corona de la estatua?<br>
                    <input type="text" name="pregunta5">
                </li>
            </ol>
            <input type="submit" value="Enviar respuestas">
        </form>
        <div id="resultado" class="resultado"></div>
    </section>
</main>

<footer>
    <p>© 2025 Blog sobre la Estatua de la Libertad. Desarrollado para proyecto académico.</p>
</footer>

<script>
function evaluarFormulario() {
    let respuestas = [
        "1886",
        "francia",
        "gustave eiffel",
        "cobre",
        "7"
    ];

    let formulario = document.forms["quizForm"];
    let nota = 0;

    for (let i = 0; i < respuestas.length; i++) {
        let respuestaUsuario = formulario.elements[i].value.trim().toLowerCase();
        let respuestaCorrecta = respuestas[i].toLowerCase();
        if (respuestaUsuario.includes(respuestaCorrecta)) {
            nota++;
        }
    }

    document.getElementById("resultado").innerHTML = "✅ Tu nota es: " + (nota * 2) + "/10";
    return false; // Evita que se recargue
}
</script>

</body>
</html>
