use test;
db.createUser({
  user: "linh",
  pwd: "test123",
  roles: [
    { role: "readWrite", db: "test" }
  ],
  mechanisms:[
    "SCRAM-SHA-1"
  ]
})
