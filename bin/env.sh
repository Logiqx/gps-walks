PROJ_DIR=$(realpath $(dirname $0)/..)
PROJ_NAME=$(basename $PROJ_DIR)
WORK_DIR=/home/jovyan/work/$PROJ_NAME

run_py_script()
{
  docker run -it --rm \
         --mount type=bind,src=$PROJ_DIR/data,dst=$WORK_DIR/data \
         ${PROJ_NAME}:${IMAGE_TAG:-latest} python/$1
}

# Explanation at https://www.peterbe.com/plog/set-ex
set -ex

cd $PROJ_DIR
