import './App.css'
import { HolaMundo } from './components/HolaMundo'  
import { Demo } from './components/Demo'
import Estudiante from './components/Estudiante'
import Contador from './components/Hooks/Contador'
import Contador_effect from './components/Hooks/Contador_effect'

function App() {

  return (
  <>
    <HolaMundo /> 
    <Demo />    
    <Contador />
    <Estudiante 
      titulo="Wilson" 
      descripcion="El mejor estudiante de la clase"
    />
    <Contador_effect />
    <Estudiante 
      titulo="Juan" 
      descripcion="El segundo mejor estudiante de la clase"
    />
    <Estudiante 
      titulo="Juan" 
      descripcion="El segundo mejor estudiante de la clase"
    />
        <Estudiante 
      titulo="Wilson" 
      descripcion="El mejor estudiante de la clase"
    />
  </>  
  )
}

export default App