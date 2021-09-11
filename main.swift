import Foundation

class AlumnoNotas {

  var Nombres: String
  var Apellidos: String
  var Curso: String
  var Nota1: Double = 0.0
  var Nota2: Double = 0.0
  var Nota3: Double = 0.0
  var Nota4: Double = 0.0

  init(pNombres: String, pApellidos: String, pCurso: String){

    self.Nombres = pNombres
    self.Apellidos = pApellidos
    self.Curso = pCurso
    self.Nota1 = 0
    self.Nota2 = 0
    self.Nota3 = 0
    self.Nota4 = 0    
  }

    //FUNCION PARA QUE MUESTRE LOS PARÁMETROS DE NOMBRES Y APELLIDOS CONCATENADOS
  func NombresCompletos()->String{
    return "\(self.Nombres) \(self.Apellidos)"
  }
    //FUNCION PARA QUE MUESTRE EL PARÁMETRO DEL NOMBRE DEL CURSO
  func NombreCurso()->String{
    return "\(self.Curso)"
  }
    //FUNCION PARA QUE CALCULE EL PROMEDIO DE ACUERDO A LOS PARÁMETROS NOTA1, NOTA2, NOTA3, NOTA4
  func Promedio()->Double{
    var Prom: Double = 0.0
    Prom = (self.Nota1 + self.Nota2 + self.Nota3 + self.Nota4) / 4
    return Prom
  }


}
  let oAlumnos = AlumnoNotas(pNombres: "Angelo", pApellidos: "Contreras Requena", pCurso: "Móviles II")
  oAlumnos.Nota1 = 20.0
  oAlumnos.Nota2 = 15.5
  oAlumnos.Nota3 = 19.0
  oAlumnos.Nota4 = 18.5

  print( "Nombres: \(oAlumnos.NombresCompletos())")
  print( "Curso: \(oAlumnos.NombreCurso())")
  print( "Promedio: \(oAlumnos.Promedio())")
