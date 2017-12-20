
SUBVERSION_DIR="~/.subversion"
PROJECTS_DIR="~/projects-4-opengrok"
CACHE_DIR="~/cache-4-opengrok"

docker run -it \
	--name opengrok \
	-p 38080:8080 \
	-v $SUBVERSION_DIR:/root/.subversion \
	-v $PROJECTS_DIR:/projects \
	-v $CACHE_DIR:/cache \
	\
	bbxytl/opengrok

