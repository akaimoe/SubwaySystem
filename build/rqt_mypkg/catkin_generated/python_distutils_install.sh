#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/altair/item/SubwaySystem/src/rqt_mypkg"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/altair/item/SubwaySystem/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/altair/item/SubwaySystem/install/lib/python3/dist-packages:/home/altair/item/SubwaySystem/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/altair/item/SubwaySystem/build" \
    "/usr/bin/python3" \
    "/home/altair/item/SubwaySystem/src/rqt_mypkg/setup.py" \
     \
    build --build-base "/home/altair/item/SubwaySystem/build/rqt_mypkg" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/altair/item/SubwaySystem/install" --install-scripts="/home/altair/item/SubwaySystem/install/bin"
