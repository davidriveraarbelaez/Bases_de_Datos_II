import './App.css'
import { HolaMundo } from './components/HolaMundo'  
import { Demo } from './components/Demo'
import Estudiante from './components/Estudiante'

function App() {

  return (
  <>
    <HolaMundo /> 
    <Demo />    
    <Estudiante 
      titulo="Wilson" 
      descripcion="El mejor estudiante de la clase"
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