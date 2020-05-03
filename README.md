# flask-gym
Render OpenAI Gym environments via Flask

## Running

To run, simply run `python app.py`. 

## Running with Docker
- local machine$ ssh -NL localhost:7879:localhost:7878 my-aws
- remote server$ docker run -p 7878:5000 gym-app python app.py

![](inbrowser.gif)

## Debugging
[David R. Pugh's xvfb
fix](https://davidrpugh.github.io/stochastic-expatriate-descent/openai/binder/google-colab/2020/04/16/remote-rendering-gym-envs.html)

## TODO
- Refreshing route "/" 3x will result in seg fault
-     "        "   "/stream" will ocasionally result in seg fault
