<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastro</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
  <script type="text/javascript">
  
  	$(document).ready(function(){
  		$("#btnEnviar").click(function() {
			var frmData = $("#formCadastro").serialize();
			$.ajax({
				url: "respondedorCadastro.jsp",
				data: frmData,
				type: "POST",
				success: function( data ) {
					$('#popup').modal("show");
				}
			});
		});
  	})
  
  
  
  </script>
</head>

<body>
	<div class="modal fade" id="popup" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalLabel">Obrigado por se cadastrar!</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body">
	        Sua senha será enviada no e-mail registrado!
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
	        <a href="login.jsp"><button type="button" class="btn btn-primary">Ir para Login</button> </a>
	      </div>
	    </div>
	  </div>
	</div>
	
	<form id="formCadastro">
		<div class = "container mt-4">
		    <div class="form-group">
		    <label for="email">Email address:</label>
		    <input type="email" class="form-control" placeholder="Enter email" id="email" name="email">
		  	</div>
		  <select class="form-select" aria-label="Default select example" name= "nivel">
			  <option selected>Nivel</option>
			  <option value="1">1</option>
			  <option value="2">2</option>
			  <option value="3">3</option>
			  <option value="3">4</option>
			  <option value="3">5</option>
			  <option value="3">6</option>
			  <option value="3">7</option>
			</select>
		
			<div class="form-group">
			    <label for="name">Nome:</label>
			    <input type="text" class="form-control" placeholder="Nome" id="name" name="nome">
		  	</div>
		  	<div class="form-group">
			    <label for="cpf">CPF:</label>
			    <input type="number" class="form-control" placeholder="CPF" id="cpf" name="cpf">
		  	</div>
		  	<div class="form-group">
			    <label for="endereco">Endereco:</label>
			    <input type="text" class="form-control" placeholder="Endereço" id="endereco" name="endereco">
		  	</div>
		  	<div class="form-group">
			    <label for="bairro">Bairro:</label>
			    <input type="text" class="form-control" placeholder="Bairro" id="bairro" name="bairro">
		  	</div>
		  	<div class="form-group">
			    <label for="cidade">Cidade:</label>
			    <input type="text" class="form-control" placeholder="Cidade" id="cidade" name="cidade">
		  	</div>
		  	<select class="form-select mb-2" aria-label="Default select example" id = "uf" name ="uf">
			  	<option  selected value="">UF:</option>
			    <option value="AC">Acre</option>
			    <option value="AL">Alagoas</option>
			    <option value="AP">Amapá</option>
			    <option value="AM">Amazonas</option>
			    <option value="BA">Bahia</option>
			    <option value="CE">Ceará</option>
			    <option value="DF">Distrito Federal</option>
			    <option value="ES">Espirito Santo</option>
			    <option value="GO">Goiás</option>
			    <option value="MA">Maranhão</option>
			    <option value="MS">Mato Grosso do Sul</option>
			    <option value="MT">Mato Grosso</option>
			    <option value="MG">Minas Gerais</option>
			    <option value="PA">Pará</option>
			    <option value="PB">Paraíba</option>
			    <option value="PR">Paraná</option>
			    <option value="PE">Pernambuco</option>
			    <option value="PI">Piauí</option>
			    <option value="RJ">Rio de Janeiro</option>
			    <option value="RN">Rio Grande do Norte</option>
			    <option value="RS">Rio Grande do Sul</option>
			    <option value="RO">Rondônia</option>
			    <option value="RR">Roraima</option>
			    <option value="SC">Santa Catarina</option>
			    <option value="SP">São Paulo</option>
			    <option value="SE">Sergipe</option>
			    <option value="TO">Tocantins</option>
			</select>
			<div class="form-group">
			    <label for="cep">Cep:</label>
			    <input type="text" class="form-control" placeholder="Cep" id="cep" name="cep">
		  	</div>
		  	<div class="form-group">
			    <label for="numero">Telefone:</label>
			    <input type="number" class="form-control" placeholder="Numero" id="telefone" name="telefone">
		  	</div>
			<p id ="msg">
			
			</p>
		  	
		  
		  <button type="button" id="btnEnviar" class="btn btn-primary">Cadastrar</button>
		</div>
	</form>
</body>
</html>