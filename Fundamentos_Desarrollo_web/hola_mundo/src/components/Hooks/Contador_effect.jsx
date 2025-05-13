import React, { useEffect } from 'react';

function Mensaje() {
    useEffect(() => {
    console.log("Componente montado");
    }, []); // El efecto solo se ejecuta una vez
    return <p>Hola!</p>;
}

export default Mensaje;