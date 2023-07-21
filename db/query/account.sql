-- name: CreateAccount :one
insert into accounts (owner, balance, currency) values ($1, $2, $3) returning *;

-- name: GetAccount :one
select * from accounts where id = $1 limit 1;

-- name: ListAccounts :many
select * from accounts order by id limit $1 offset $2;