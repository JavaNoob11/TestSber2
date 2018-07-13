/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.mypackage.hello2;

//import java.sql.Array;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import java.sql.ResultSet;
//import java.sql.ResultSetMetaData;
import java.sql.Statement;

/**

*/
public class NameHandler {
private String name;

public NameHandler() {

name = null;
// переменной name присваиваем результат работы функции dbCon()
name=dbCon();


}

/**
* @return the name
*/
public String getName() {

return name;
}

/**
* @param name the name to set
*/
public void setName(String name) {
this.name = name;
}


final String dbCon(){

// присваиваем первоначальное значение, сообщение в случае отсутствия коннекта к базе
String tmp ="No connection to Data Base";
// переменные для доступа к данным полей
// поле dscr - описание товара
String descr="";
// pic - картинка (картинки по умолчанию лежат в папке web/images/)
String pic="";
// поле price - цена
String price="0";
// поле stroe - сколько товаров на складе
String store="0";

try {

Class.forName("com.mysql.jdbc.Driver");

// Создаём Statement необходимый для создания запросов к базе
try ( // Создание коннекта к базе
Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/mynewdatabase", "root", "1234"); // Создаём Statement необходимый для создания запросов к базе
Statement st = (Statement) connection.createStatement(); // Создаём ResultSet для того, чтобы принять данные возвращённые после обработки запроса базой данных
ResultSet res = st.executeQuery("SELECT * FROM up_item_big LIMIT 100;")) {


// перемещаемся в самый верх ряда в таблице

res.first();

// цикл работает до тех пор пока программа не достигла самого конца базы

while(!res.isAfterLast()){

// если произошёл благополучный коннект к базе, то очищаем строку
// метод equals ищет в строке текст "No connection to Data Base"

if (tmp.equals("No connection to Data Base")) tmp="";

// присваиваем значение полей переменным
price= res.getString("price");
store= res.getString("store");

descr= res.getString("descr");
pic=res.getString("pic");

// соединяем все данные в одну строку , разделитель между данными - :
// разделитель между новыми записями - *
// после того, как строка будет упакована таким образом, она будет разобрана
// с помощью java script в Index.JSP
tmp = pic+":"+res.getString("title")+":"+descr+":"+price+":"+store+"*"+tmp;


// переход к следующей записи
res.next();


}



}

} catch (ClassNotFoundException | SQLException e) {


}



return tmp;

}


}
