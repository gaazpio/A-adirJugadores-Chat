
import '../Perfil/Lista.dart';
import '../Perfil/Perfiles.dart';

class DataHolder{
  static final DataHolder _dataHolder = new DataHolder._internal();
  Lista whatList= Lista();
  Perfil perfil =Perfil();


  DataHolder._internal(){

  }

  factory DataHolder() {
    return _dataHolder;
  }



}