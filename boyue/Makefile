include rules.mk

all: ECHO_ENV teacher-service manager-service parent-service student-service common-service

install: teacher-service-install manager-service-install parent-service-install student-service-install common-service-install

image: teacher-service-image manager-service-image parent-service-image student-service-image common-service-image

clean: teacher-service-clean manager-service-clean parent-service-clean student-service-clean common-service-clean

push: teacher-service-push manager-service-push parent-service-push student-service-push common-service-push

ECHO_ENV:
	@echo "TARGET_DIR=$(TARGET_DIR)"
	@echo "TAG_VERSION=$(TAG_VERSION)"
	@echo "DOCKER_HUB=$(DOCKER_HUB)"
	
	
teacher-service: 
	$(MAKE) -C boyue-teacher-service
teacher-service-install:
	$(MAKE) -C boyue-teacher-service install
teacher-service-image:
	$(MAKE) -C boyue-teacher-service image
teacher-service-clean:
	$(MAKE) -C boyue-teacher-service clean
teacher-service-push:
	$(MAKE) -C boyue-teacher-service push
	
manager-service: 
	$(MAKE) -C boyue-manage-service
manager-service-install:
	$(MAKE) -C boyue-manage-service install
manager-service-image:
	$(MAKE) -C boyue-manage-service image
manager-service-clean:
	$(MAKE) -C boyue-manage-service clean
manager-service-push:
	$(MAKE) -C boyue-manage-service push
	
parent-service: 
	$(MAKE) -C boyue-parent-service
parent-service-install:
	$(MAKE) -C boyue-parent-service install
parent-service-image:
	$(MAKE) -C boyue-parent-service image
parent-service-clean:
	$(MAKE) -C boyue-parent-service clean
parent-service-push:
	$(MAKE) -C boyue-parent-service push
	
student-service: 
	$(MAKE) -C youyue
student-service-install:
	$(MAKE) -C youyue install
student-service-image:
	$(MAKE) -C youyue image
student-service-clean:
	$(MAKE) -C youyue clean
student-service-push:
	$(MAKE) -C youyue push
	
common-service: 
	$(MAKE) -C lemonread-common-service
common-service-install:
	$(MAKE) -C lemonread-common-service install
common-service-image:
	$(MAKE) -C lemonread-common-service image
common-service-clean:
	$(MAKE) -C lemonread-common-service clean
common-service-cleanall:
	$(MAKE) -C lemonread-common-service cleanall
common-service-push:
	$(MAKE) -C lemonread-common-service push