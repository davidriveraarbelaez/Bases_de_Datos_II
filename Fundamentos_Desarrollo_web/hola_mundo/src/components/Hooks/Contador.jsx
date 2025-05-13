import { useState } from 'react';

function Contador() {
    const [contador, setContador] = useState(0);
    return <button onClick={() => setContador(contador + 1)}>Clicks: {contador}</button>
}

export default Contador;