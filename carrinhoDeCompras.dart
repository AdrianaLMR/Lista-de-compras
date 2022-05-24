import 'dart:io';

main(){

 print('Digite o nome do item para adicionar');
 print('Digite imprimir para ver a lista de compras');
 print('Digite remover para remover um item.');
 print('Digite sair para finalizar.');

 List<String> produtos = []; // var global/ fora da função
 bool condicao = true; // var privada/ dentro de uma função

 while (condicao) {
   print('Adicione um produto');
   String text = stdin.readLineSync().toString();
   if (text == 'sair') {
   print('Lista finalizada'); 
   condicao = false;
  } else if ( text == 'imprimir'){
      imprimir(produtos);
    } else if (text == 'remover'){
       remover(produtos);
      } else {
         produtos.add(text);
         print('\x1B[2J\x1B[0;0H');
        }
  }
}
imprimir(produtos){
   for (var i = 0; i < produtos.length; i++) {
      print('Item $i - ${produtos[i]}');
    }  
  }
  remover(produtos){
    print('Qual item remover?');
    imprimir(produtos);
    int item  = int.parse(stdin.readLineSync().toString());
    produtos.removeAt(item);
    print('item removido'); 
  }