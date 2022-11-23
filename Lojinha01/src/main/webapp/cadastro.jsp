<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastro</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<style type="text/css">


	#btnEnviar{
		width: 300px;
		height: 60px;
	
	}
	#terms{
		height: 150px;
		overflow-y: scroll;
	
	}


	#termsCheck{
		margin-left: 20px;
	
	}
	#imgPreview{
	  	width: 100%;
	  	height: 100%;	
	  	border-radius: 10px;
	  	transition: 0.5s;
	}
	
	#imgPreview:hover{
	  	opacity: 70%;
	}

	#divImg{
		position: relative;
		margin: 0px -50px 0px 0px;
		width: 150px;
	  	height: 150px;
		background-color: gray;
		border-radius: 10px;
		border-style: solid;
		border-color: black;
		transition: 0.5s;
	}
	
	#divImg:hover{
		background-color: #474A51;
		cursor: pointer;
	
	}
	
	div p{
	  position:absolute;
	  top:50%;
	  left:50%;
	  transform:translate(-50%,-50%);
	  font-weight: bolder;
	}	
	.alingI{
		margin: 10px 15px;
	}
	
	select {
		margin-top: 32px;
	
	}
	
	

</style>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
  <script type="text/javascript">
  
  	$(document).ready(function(){
  		
  		$("#divImg").click(function() {
			$("#inputFile").trigger('click');
		});
  		
  		
  		$("#inputFile").change(function (event) {
  			$('#pImg').css('display', 'none');
  			var file = event.target.files[0];
  			var reader = new FileReader();
  			reader.readAsDataURL( file );
  			reader.onload = function () {
  				var imgBase64 = reader.result;
  				console.log(imgBase64);
  				$("#imgPreview").attr("src",imgBase64);
  				$("#foto").val(imgBase64);
  			};
  			reader.onerror = function ( error ) {
  				console.log('Error: ', error);
  			};
  		});
  		
  		
  		
  		$("#btnEnviar").click(function() {
  			if($('#check1').prop('checked') == true){
				var frmData = $("#formCadastro").serialize();
				$.ajax({
					url: "respondedorCadastro.jsp",
					data: frmData,
					type: "POST",
					success: function( data ) {
						$('#popup').modal("show");
					}
				});
  			}else{
  				alert("Preencha os campos obrigatórios");
  				$('#check1').addClass('required');
  			}
		});
  		
  		
  	});
  
  
  
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
	
	<div class="container mt-4 d-flex justify-content-center">
		<form id="formCadastro">
			<div class = "form-group row col-12">
				<div class="col-5">
					<label for="email">Email address:</label>
					<input type="email" class="form-control" placeholder="Enter email" id="email" name="email">
				 </div>
				 <div class="col-4">
					<label for="name">Nome:</label>
					<input type="text" class="form-control" placeholder="Nome" id="name" name="nome">
				 </div>
				<div class="col-3">
					<label class="mr-sm-2 sr-only" for="selectNivel">Nivel</label>
				  	<select class="custom-select" id="selectNivel" aria-label="Default select example" name= "nivel">
						  <option selected>Nivel</option>
						  <option value="1">1</option>
						  <option value="2">2</option>
						  <option value="3">3</option>
						  <option value="3">4</option>
						  <option value="3">5</option>
						  <option value="3">6</option>
						  <option value="3">7</option>
					</select>
				</div>
			</div>
			<div class="form-group row col-12">
				<div class="col-4">
					<label for="cpf">CPF:</label>
					<input type="number" class="form-control" placeholder="CPF" id="cpf" name="cpf">
				</div>
				<div class="col-4">
					<label for="cep">Cep:</label>
					<input type="text" class="form-control" placeholder="Cep" id="cep" name="cep">
			    </div>
			    <div class="col-4">
					<label for="endereco">Endereco:</label>
					<input type="text" class="form-control" placeholder="Endereço" id="endereco" name="endereco">
				 </div>
			</div>
			<div class="form-group row col-12">	  
				  <div class="col-3">
					<label for="bairro">Bairro:</label>
					<input type="text" class="form-control" placeholder="Bairro" id="bairro" name="bairro">
				  </div>
				  <div class="col-3">
					<label for="cidade">Cidade:</label>
					<input type="text" class="form-control" placeholder="Cidade" id="cidade" name="cidade">
				  </div>
				  <div class="col-4">
				  	<label for="numero">Telefone:</label>
					<input type="number" class="form-control" placeholder="Numero" id="telefone" name="telefone">
				  </div>
				  <div class="col-2">
				  	<label class="mr-sm-2 sr-only" for="selectUf">Uf</label>
				  	<select id="selectUf" class="custom-select" aria-label="Default select example" id = "uf" name ="uf">
						  <option  selected value="">UF:</option>
						<option value="AC">AC</option>
						<option value="AL">AL</option>
						<option value="AP">AP</option>
						<option value="AM">AM</option>
						<option value="BA">BA</option>
						<option value="CE">CE</option>
						<option value="DF">DF</option>
						<option value="ES">ES</option>
						<option value="GO">GO</option>
						<option value="MA">MA</option>
						<option value="MS">MS</option>
						<option value="MT">MG</option>
						<option value="MG">MG</option>
						<option value="PA">PA</option>
						<option value="PB">PB</option>
						<option value="PR">PR</option>
						<option value="PE">PE</option>
						<option value="PI">PI</option>
						<option value="RJ">RJ</option>
						<option value="RN">RN</option>
						<option value="RS">RS</option>
						<option value="RO">RO</option>
						<option value="RR">RR</option>
						<option value="SC">SC</option>
						<option value="SP">SP</option>
						<option value="SE">SE</option>
						<option value="TO">TO</option>
					</select>	  
				  
				  </div>
				  
				  
			</div>
				
			<div class="form-group row col-12">
				<div class="col-4">
					<div class="">
						<div class="form-check mt-4">
						  <input class="form-check-input required" type="checkbox" id="check1" name="option1" value="something" required>
						  <label class="form-check-label">Concorda com nossos termos?</label>
						</div>
						<div class="form-check">
						  <input class="form-check-input" type="checkbox" id="check2" name="option2" value="something" checked>
						  <label class="form-check-label">Deseja receber newsletter no seu email?</label>
						</div>
						<button type="button" id="btnEnviar" class="btn btn-primary mt-3 p-2 bd-highlight">Cadastrar</button>
					</div>
				</div>
				  <div class="col-6">
						<div>
							<div id="terms" class="card card-body scrollspy-example" data-offset="0" data-spy="scroll">
								Termos de Serviço!!! <br>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
							</div>
						</div>
				</div>
				<p id ="msg">
				
				</p>
				  <div id="uploadImg" class="col-2">
				  	
					<div id="divImg"><img onload="this.style.display = 'block'" onerror="this.style.display = 'none'" id="imgPreview" alt="Carregar Imagem" src=""> 
						<p id="pImg">
				  			Carregar imagem
				  		</p>	
				  	</div>
						
						<input type="hidden" id="foto" name="foto" value="">
						<input type="file" id="inputFile" name="inputFile" style="display: none;"><br>
					<div id="msg"></div>
					
				  </div>  
			</div>
					
			  
			
		</form>


	</div>
</body>
</html>