start:
	docker-compose up -d
	
stop:
	docker-compose down
	
install:
	docker-compose -f docker-compose.yml -f wp-auto-config.yml run --rm wp-auto-config
	
clean: stop
	@echo "💥 Removing related folders/files..."
	@rm -rf  mysql/* wordpress/*