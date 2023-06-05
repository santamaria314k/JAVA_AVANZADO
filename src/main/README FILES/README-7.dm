-tablas productos categorias con sus interfaces
-------------------------------------------------------------------
CREATE TABLE `categories` (
`category_id` int    auto_increment,
`category_name` varchar(40) NOT NULL,
PRIMARY KEY (`category_id`)
) ;
----------------------------------------------------------------------------

CREATE TABLE `products` (
`product_id` int    auto_increment,
`product-_name` varchar(40) NOT NULL,
`product_value` varchar(40) NOT NULL,
`category_id` int ,
PRIMARY KEY (`product_id`),FOREIGN KEY (`category_id`) REFERENCES `categories`(`category_id`)
) ;
----------------------------------------------------------------------


-RegistreUserServlet
se crea una clase que se estiende de HttpServlet

se crea un metodo doget para trabajar  con html

se crea un metodo dopost  con variables  de tipo string que se usan para pasar los valores.

luego se instancia un objeto de la clase user


luego se crea un objeto que usa los atributos de user llama los
metodos de la clase UserRepositoryImpl y llama eñl metodo saveobj

y luego se ejecuta un mensaje de exepcion error o operacion exitosa

y se ejecutab  web servlet en el form action.


repository   =>   IMPL

SERVLETS   => FORMS.
