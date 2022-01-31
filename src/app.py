from flask import Flask
app = Flask(__name__)

@app.route("/")
def main():
    return "SWUS-2"

if __name__ == "__main__":
    print ("Starting the appliacation")
    app.run(host='0.0.0.0')
  