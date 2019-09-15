if ! conda env list | grep -q 'stackoverflow'; then
    echo "Didn't find a 'stackoverflow' conda env. Setting one for you."
    conda create -n stackoverflow python=3.7
fi

echo "Activating stackoverflow env"
source activate stackoverflow

echo "Installing dependencies into stackoverflow env"
pip install -r requirements.txt
