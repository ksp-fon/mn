
import os
import requests
import sys

TOKEN= "ksp_secret"
#TOKEN= str(sys.argv[1])
OWNER= "ksp_user"
REPO= "ksp_repo"
Workflow_Name= "ksp_workflow"
parameter1= "ksp"

print( f"the toke value is {TOKEN} ")
def trigger_workflow(Workflow_Name,parameter1):

      headers = {
        "Accept": "application/vnd.github.v3+json",
        "Authorization": f"token {TOKEN}",
      }

      data = {
        "event_type": Workflow_Name,
        "client_payload": {
          'parameter1': parameter1
        }
      }

      responseValue=requests.post(f"https://api.github.com/repos/{OWNER}/{REPO}/dispatches",json=data,headers=headers)
      print(responseValue.content)

trigger_workflow(Workflow_Name,parameter1)
