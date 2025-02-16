This repo contains collection of notebooks which are proof of concepts I have developed using Azure AI services and other LLM models.
Each notebook in this repo provides detailed code walkthrough of important concepts and will teach you how to build Gen AI applications with step by step explainations to understand important concepts.
Intention to create this POC Hub is to share proof of concepts with anyone interested in creating AI solutions! 

* Prompt engineering techniques
* Vectorization examples
* Function Calling
* Assistants API
* Basic RAG 
* Using Orchestration frameworks - multi agents RAG
* Building Smart Chat App on SQL data (NL to SQL)
* Extracting key/values and datapoints from documents
* Autogen examples - basic conversational multi agents, code exector and tool use patterns
* RAG Techniques
    * Naive RAG
    * Standard/Advanced RAG
    * MS Graph Rag


# How to use 

Separate environments created for each excercise. For example - e1 to e3 uses aoai_poc_e1, e1 uses aoai_poc_e4 etc. 
Each excercise has its own requirements.txt file. 
This is to avoid any library or version conflicts and making sure each excercise works on its own independtly without any dependencies

Commands to create environments
Conda create -p C:\Users\..\git\aoai-poc-hub\common\envs\aoai_poc_e4 <specify path but cannot specify name here>  python=3.11
Conda activate <fullpath> or <env-name-here>
Conda deactivate <fullpath> or <env-name-here>

Installing packages using PIP
pip install -r ./common/requirements.txt  --File 
conda install pip  --individual pkg
conda install ipykernel --individual pkg

# Disclaimer

The examples and code snippets in this repository are provided for **illustration and demonstration purposes only**. They are not intended for production deployment. Also, these examples are my own code snippets I have created individually or from the existing code samples shared on product documentation/references mentioned. These should not be considered as references or opinions shared by my company or any other entity. 



**Use them at your own risk and responsibility.**

If you plan to use any of this code in a production environment, make sure to thoroughly review, test, and adapt it to meet your specific requirements. Always follow best practices and security guidelines.

The authors and contributors of this repository are not liable for any consequences resulting from the use of this code.


