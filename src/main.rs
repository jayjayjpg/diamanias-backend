extern crate actix_web;
extern crate listenfd;

use listenfd::ListenFd;
use actix_web::{middleware::csrf, server, App, HttpRequest, Responder};

fn handle_post(_req: &HttpRequest) -> impl Responder {
  "Aloha, world!"
}

fn main() {
  let mut listenfd = ListenFd::from_env();
  let mut server = server::new(|| {
    App::new()
      .prefix("/api")
      .middleware(csrf::CsrfFilter::new()
         .allowed_origin("http://localhost:4200"))
      .resource("/", |r| {
        r.method(http::Method::GET).f(|_| HttpResponse::Ok());
        r.method(http::Method::POST).f(handle_post);
       })
       .finish();
  });
  server = if let Some(l) = listenfd.take_tcp_listener(0).unwrap() {
    server.listen(l)
  } else {
    server.bind("127.0.0.1:3000").unwrap()
  };

  server.run();
}
