# docker-compose-Make
    在node环境下使用Make来简单构建和管理自己的工程，使用docker-compose来项目部署

    一个工程中的源文件不计其数，其按类型、功能、模块分别放在若干个目录中，makefile定义了一系列的规则来指定，哪些文件需要先编译，
哪些文件需要后编译，哪些文件需要重新编译，甚至于进行更复杂的功能操作，因为 makefile就像一个Shell脚本一样，其中也可以执行操作系统的命令。

    makefile带来的好处就是——“自动化编译”，一旦写好，只需要一个make命令，整个工程完全自动编译，极大的提高了软件开发的效率。
make是一个命令工具，是一个解释makefile中指令的命令工具，一般来说，大多数的IDE都有这个命令，比如：Delphi的make，Visual C++的nmake，
Linux下GNU的make。可见，makefile都成为了一种在工程方面的编译方法。

一个简单的Makefile文件如下：

include rules.mk

all: ECHO_ENV teacher-service 

install: teacher-service-install 

image: teacher-service-image 

clean: teacher-service-clean

push: teacher-service-push 

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
	
