# Guang

[![image](https://img.shields.io/badge/Pypi-7.6.0-green.svg)](https://pypi.org/project/guang)
[![image](https://img.shields.io/badge/python-3.X-blue.svg)](https://www.python.org/)
[![image](https://img.shields.io/badge/license-GNU_GPL--v3-blue.svg)](LICENSE)
[![image](https://img.shields.io/badge/author-K.y-orange.svg?style=flat-square&logo=appveyor)](https://github.com/beidongjiedeguang)



Scientific calculation of universal function library
$$
a^2+b^2=c^2
$$


## Requirements

```python
Python 3
CUDA >= 10.0
PyTorch >= 1.0
Tensorflow >= 1.12.0
opencv-python
pydub
librosa
pyworld
soundfile
pypinyin
pomegranate
python-Levenshtein
```



## Installation

```python
pip install guang
```

​	Install Explorer Edition 

```python
pip install git+https://github.com/beidongjiedeguang/guang
```



## Examples

- Convert audio in .mp3/ .wav format to (sample rate=16k, single channel) .wav format

  ```python
  from guang.Voice.convert improt cvt2wav
  cvt2wav(orig_path, target_path, sr=16000)
  ```



* Use `dict_dotable` to convert a dictionary to dot-able dictionary:

  ```python
  from guang.Utils.toolsFunc import dict_dotable
  a = {'a':{'b':1}}
  a = dict_dotable(a)
  print(a.a.b)
  
  >> 1
  ```

  

* Use `probar` to display current progress

  ```python
  from guang.Utils.toolsFunc import probar
  for idx, x in probar(range(10)):
      time.sleep(0.8)
  
  >> 100.00%         0'7.3"|0'7.3"     Expect: 12-2 23:59:8
  ```

  

* `@broadcast`  broadcast a non-broadcast function.

  ```python
  from guang.Utils.toolsFunc import broadcast
  
  @broadcast
  def f(x):
      # A function that can map only a single element
      if x==1 or x==0:
          return x
      else:
          return f(x-1)+f(x-2)
  
  >> f([2,4,10])
  >> array([1, 3, 832040], dtype=object)
  ```

  

* `txt2ph` Convert Chinese characters to phoneme

  ```python
  from guang.Voice.txt2pinyin import txt2ph
  txt2ph('你好，我是光')
  
  >> [('n', 'i3'), ('h', 'ao3'), ('sp1',), ('uo3',), ('sh', 'ii4'), ('g', 'uang1')]
  ```

  







