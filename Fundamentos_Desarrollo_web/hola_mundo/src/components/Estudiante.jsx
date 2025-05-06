import React from 'react'

const Estudiante = ({titulo, descripcion}) => {
  return (
    <div className='estudiante'>
        <h2>{titulo}</h2>
        <p>{descripcion}</p>
    </div>

  )
}

export default Estudiante