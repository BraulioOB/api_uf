<p>Para utilizar esta API, primero se debe crear una cuenta de usuario o utilizar la de ejemplo llamada "braulio". La API contiene los valores de la UF de enero y febrero de 2021. Utilizar rails db:seed si no existen.</p>

<h3>Crear una cuenta de usuario</h3>
<ol>
  <li>Ir a la ruta POST</li>
    <code><b>http://localhost:3000/clients/register</b></code>
  <li>El formato de la consulta debe ser</li>
  <code><b>{"user": "tu_nombre"}</b></code>
  <ul>
    <li>el nombre usuario debe ser único</li>
    <li>automaticamente el nombre de usuario se vuelve a minusculas y se eliminan todos los espacios</li>
  </ul>
  <li>nombre registrado correctamente:</li>
    <code>{ "status": "ok" }</code>
</ol>

<h3>Devolver valor de UF en una fecha solicitada</h3>
<ol>
    <li>Consultar a la ruta GET</li>
    <code>http://localhost:3000/<b>uf</b>/<i>:date</i></code>
    <li>añadir un header con la clave <b>X-CLIENT</b> y como valor el usuario creado</li>
    <i>*la respuesta será <code><b>{"status": "AUTH ERROR"}</b></code> si no se incluye el header o el usuario no existe</i>
    <li>:date debe ser reemplazada por la fecha con formato aaaa-mm-dd</li>
    <ol>
        <li>Ejemplo request:</li>
        <code><i>http://localhost:3000/uf/2021-2-15</i></code>
        <li>Ejemplo response:</li>
        <code>{"day": "2021-02-15", "price": 29192.68, "user_requests": 9}</code>
    </ol>
    <br>
    <i>*solo las consultas exitosas son contadas</i>
</ol>

<h3>Solicitar la cantidad de consultas de un usuario</h3>
<ol>
    <li>Consultar a la ruta GET</li>
    <code>http://localhost:3000/<b>/clients/:user/consumed</b></code>
    <li>reemplazar en <b>:user</b> el usuario a consultar</li>
    <li>se obtiene una respuesta del tipo</li>
    <code>{"user": "braulio", "requests": 9}</code>
    <i>*para esta consulta no es necesario el header</i>
</ol>
