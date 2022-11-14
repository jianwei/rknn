import onnx
from onnx2pytorch import ConvertModel

onnx_model = onnx.load('./yolov5s.onnx')
pytorch_model = ConvertModel(onnx_model)