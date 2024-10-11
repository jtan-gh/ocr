from test import print_message
import cv2
import os

def open_img(image_path):
    image = cv2.imread(image_path)

    cv2.imshow("Image", image)
    cv2.waitKey(0)
    cv2.destroyAllWindows()

def main():
    print("hello from container")
    print("adding new line without rebuilding")
    open_img(os.path.join(os.path.dirname(__file__), "img", 'sample_1.png'))
    open_img(os.path.join(os.path.dirname(__file__), "img", 'sample_2.png'))

if __name__ == "__main__":
    main()
