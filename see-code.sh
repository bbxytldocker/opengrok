docker run -it \
	--name myopengrok \
	-p 38010:8080 \
	-v ~/data/git/test_project:/projects/test_project \
	bbxytl/opengrok
	# -d \

