

## How to restrict access to ctrlX Data Layer nodes for a specific user

[See tutorial using this link]https://community.boschrexroth.com/ctrlx-automation-how-tos-qmglrz33/post/how-to-restrict-access-to-ctrlx-data-layer-nodes-for-a-specific-user-3C1aawPRwHQKaJ9.


```json
{
    "identifier": "datalayer.MotionOnly",
    "name": "Motion/Nodes/Only",
    "description": "specific datalayer rights definition -> motion",
    "permissionsR": [
        "motion/**"
    ]
}
```