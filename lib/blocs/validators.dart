import 'dart:async';

class Validators {
  final validateEmail = StreamTransformer<String,String>.fromHandlers(
    handleData:(email, sink){
      
      if(RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(email)){
        sink.add(email);
      }
      else{
        sink.addError('Enter valid email');
      }
      
  }
    
  );
  final validatePassword = StreamTransformer<String,String>.fromHandlers(
    handleData:(pass, sink){
      if(pass.length>4){
        sink.add(pass);
      }
      else{
        sink.addError('Enter valid passl');
      }
    }
  );
}