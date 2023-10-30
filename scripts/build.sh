SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
echo $SCRIPTPATH

RENDER_BALLS_SO="$SCRIPTPATH/../utils/render_balls_so.cpp"

if [ ! -f "$RENDER_BALLS_SO" ]; then
  echo "Error: $RENDER_BALLS_SO does not exist."
  exit 1
fi

echo "Compiling $RENDER_BALLS_SO..."

g++ -std=c++11 "$RENDER_BALLS_SO" -o "$SCRIPTPATH/../utils/render_balls_so.so" -shared -fPIC -O2 -D_GLIBCXX_USE_CXX11_ABI=0

echo "Compilation complete."