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

echo_and_run cd "/home/driverless/sim/src/eufs_sim/ros_can_sim"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/driverless/sim/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/driverless/sim/install/lib/python2.7/dist-packages:/home/driverless/sim/build/ros_can_sim/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/driverless/sim/build/ros_can_sim" \
    "/usr/bin/python2" \
    "/home/driverless/sim/src/eufs_sim/ros_can_sim/setup.py" \
     \
    build --build-base "/home/driverless/sim/build/ros_can_sim" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/driverless/sim/install" --install-scripts="/home/driverless/sim/install/bin"
