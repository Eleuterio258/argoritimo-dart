class Cliente {
  String nome;
  String email;
  String morada;
  String salario;

  String getNome() {
    return nome;
  }

  String getEmail() {
    return email;
  }

  String getMorada() {
    return morada;
  }

  String getSalario() {
    return salario;
  }

  void setNome(String nome) {
    nome = nome;
  }

  void setEmail(String email) {
    email = email;
  }

  void setMorada(String morada) {
    morada = morada;
  }

  void setSalario(String salario) {
    salario = salario;
  }

  Cliente({this.nome, this.email, this.morada, this.salario});

  
}
