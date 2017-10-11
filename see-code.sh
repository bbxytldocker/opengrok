docker run -it \
	--name myopengrok \
	-p 38010:8080 \
	-d \
	-v ~/data/git/qtz/q2_code/q2_engine:/projects/q2_engine \
	bbxytl/opengrok

