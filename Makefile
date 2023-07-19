migrateup:
	./migrate -path db/migration -database "postgresql://postgres:pass1234@localhost:5432/simple_bank?sslmode=disable" -verbose up

migratedown:
	./migrate -path db/migration -database "postgresql://postgres:pass1234@localhost:5432/simple_bank?sslmode=disable" -verbose down

sqlc:
	~/go/bin/sqlc generate

.PHONY: migrateup migratedown sqlc