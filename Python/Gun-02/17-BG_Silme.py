from rembg import remove

input_path = "Python/Gun-02/aslan.jpeg"
output_path = "Python/Gun-02/aslan.png"

with open(input_path, 'rb') as i:
    with open(output_path, 'wb') as o:
        input = i.read()
        output = remove(input)
        o.write(output)