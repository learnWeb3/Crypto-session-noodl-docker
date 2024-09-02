// users

db = db.getSiblingDB("noodl-backend-cloud"); // we can not use "use" statement here to switch db

// backend server api
db.createUser({
	user: "noodl-backend-cloud-admin",
	pwd: "foobar",
	roles: [{ role: "dbOwner", db: "noodl-backend-cloud" }],
	passwordDigestor: "server",
});