___SANDBOXED_JS_FOR_WEB_TEMPLATE___

/* This script is written using the Google "sAnDbOxEd jAvAsCrIpT", a shitty
 * invention based on shitty principles. That means, there will be no tests, no
 * linting and no code metrics on this piece. */

const injectScript = require('injectScript');
const copyFromWindow = require('copyFromWindow');
const getTimestampMillis = require('getTimestampMillis');
const connectTracking = () => {
  const at = copyFromWindow('articleTracker');
  at.trackArticle({
    selector: data.selector,
    resolveContentTypes: data.contentTypes,
    connectedEvents: data.connectedEvents,
    extraProps: data.extraProps,
    trackDefaultContentTypes: data.trackDefaultContentTypes,
  });
  data.gtmOnSuccess();
};

injectScript(
  data.staging ? ('https://storage.googleapis.com/zt-le-scripts/at/staging/main.js?cacheBreak=' + getTimestampMillis()) : 'https://storage.googleapis.com/zt-le-scripts/at/0.7.3/main.js',
  connectTracking,
  data.gtmOnFailure,
  'article-tracker'
);

___INFO___

{
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Article Tracking",
  "categories": [
    "ADVERTISING",
    "ANALYTICS",
    "CONVERSIONS"
  ],
  "brand": {
    "id": "optimics",
    "displayName": "Optimics",
    "thumbnail": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAQAAAAEACAYAAABccqhmAAAA0GVYSWZJSSoACAAAAAoAAAEEAAEAAAAAAQAAAQEEAAEAAAAAAQAAAgEDAAMAAACGAAAAEgEDAAEAAAABAAAAGgEFAAEAAACMAAAAGwEFAAEAAACUAAAAKAEDAAEAAAACAAAAMQECAA0AAACcAAAAMgECABQAAACqAAAAaYcEAAEAAAC+AAAAAAAAAAgACAAIAEgAAAABAAAASAAAAAEAAABHSU1QIDIuMTAuMzQAADIwMjM6MTA6MDIgMTQ6NDg6MjcAAQABoAMAAQAAAAEAAAAAAAAAMJV5OgAAAYNpQ0NQSUNDIHByb2ZpbGUAAHicfZE9SMNAHMVfU7VSKg52EHHIUJ0siIo4ahWKUCHUCq06mFz6BU0akhQXR8G14ODHYtXBxVlXB1dBEPwAcXVxUnSREv+XFFrEeHDcj3f3HnfvAKFRYZrVNQtoum2mkwkxm1sVQ68IQ0AE4+iRmWXMSVIKvuPrHgG+3sV5lv+5P0efmrcYEBCJZ5lh2sQbxNObtsF5nzjKSrJKfE48ZtIFiR+5rnj8xrnossAzo2YmPU8cJRaLHax0MCuZGvEUcUzVdMoXsh6rnLc4a5Uaa92TvzCS11eWuU5zGEksYgkSRCiooYwKbMRp1UmxkKb9hI9/yPVL5FLIVQYjxwKq0CC7fvA/+N2tVZic8JIiCaD7xXE+RoDQLtCsO873seM0T4DgM3Clt/3VBjDzSXq9rcWOgP5t4OK6rSl7wOUOMPhkyKbsSkGaQqEAvJ/RN+WAgVsgvOb11trH6QOQoa5SN8DBITBapOx1n3f3dvb275lWfz9eJnKekN47fgAADXhpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+Cjx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IlhNUCBDb3JlIDQuNC4wLUV4aXYyIj4KIDxyZGY6UkRGIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyI+CiAgPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIKICAgIHhtbG5zOnhtcE1NPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvbW0vIgogICAgeG1sbnM6c3RFdnQ9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZUV2ZW50IyIKICAgIHhtbG5zOmRjPSJodHRwOi8vcHVybC5vcmcvZGMvZWxlbWVudHMvMS4xLyIKICAgIHhtbG5zOkdJTVA9Imh0dHA6Ly93d3cuZ2ltcC5vcmcveG1wLyIKICAgIHhtbG5zOnRpZmY9Imh0dHA6Ly9ucy5hZG9iZS5jb20vdGlmZi8xLjAvIgogICAgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIgogICB4bXBNTTpEb2N1bWVudElEPSJnaW1wOmRvY2lkOmdpbXA6MjQzNDJlNmMtOTczZi00N2ViLTk0MGEtZGFjMDAxODY5ZTNkIgogICB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOjY0ZThjZGU0LTA3NDgtNDIyZC04OTc1LTI2NDBmMWZlMWY2NyIKICAgeG1wTU06T3JpZ2luYWxEb2N1bWVudElEPSJ4bXAuZGlkOmFiMDg0OTJhLWQ1YjItNDJjYy1iM2Q1LTM0NTE1MGIzODYzMCIKICAgZGM6Rm9ybWF0PSJpbWFnZS9wbmciCiAgIEdJTVA6QVBJPSIyLjAiCiAgIEdJTVA6UGxhdGZvcm09IkxpbnV4IgogICBHSU1QOlRpbWVTdGFtcD0iMTY5NjI1MDkwODUzMjcxOCIKICAgR0lNUDpWZXJzaW9uPSIyLjEwLjM0IgogICB0aWZmOk9yaWVudGF0aW9uPSIxIgogICB4bXA6Q3JlYXRvclRvb2w9IkdJTVAgMi4xMCIKICAgeG1wOk1ldGFkYXRhRGF0ZT0iMjAyMzoxMDowMlQxNDo0ODoyNyswMjowMCIKICAgeG1wOk1vZGlmeURhdGU9IjIwMjM6MTA6MDJUMTQ6NDg6MjcrMDI6MDAiPgogICA8eG1wTU06SGlzdG9yeT4KICAgIDxyZGY6U2VxPgogICAgIDxyZGY6bGkKICAgICAgc3RFdnQ6YWN0aW9uPSJzYXZlZCIKICAgICAgc3RFdnQ6Y2hhbmdlZD0iLyIKICAgICAgc3RFdnQ6aW5zdGFuY2VJRD0ieG1wLmlpZDo4MzYzNTQzZS1iYmY4LTRjZDEtYjlmMS00ZGY3NGJlNzZmNjciCiAgICAgIHN0RXZ0OnNvZnR3YXJlQWdlbnQ9IkdpbXAgMi4xMCAoTGludXgpIgogICAgICBzdEV2dDp3aGVuPSIyMDIzLTEwLTAyVDE0OjQ4OjI4KzAyOjAwIi8+CiAgICA8L3JkZjpTZXE+CiAgIDwveG1wTU06SGlzdG9yeT4KICA8L3JkZjpEZXNjcmlwdGlvbj4KIDwvcmRmOlJERj4KPC94OnhtcG1ldGE+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAKPD94cGFja2V0IGVuZD0idyI/PlfqpgYAAAAGYktHRAAlADAAF1fae1wAAAAJcEhZcwAACxMAAAsTAQCanBgAAAAHdElNRQfnCgIMMBzlccJoAAAb1UlEQVR42u3deWAURaIG8K+6557cQEBuueRWFFAUfIiLB4qKB4rCsh64q64+14NdXQ9UEBRkPRd13acIoujKKoLXeoG6oMgVTpEzkJCE3JNM5ujuen8EM3QmmZlEEpOZ7/ffdNLTMzVdX1dXV1cLADjStU+GgHgIApMAZIKI4lU+gEVCGrPaZP9UKo507ZMhhPgMwBCWDVHC2AApxygC4iFWfqKEcyqE+Iso7HZSPpv9RAnpgMLKT5SwuiksA6LExQAgYgAQEQOAiBgARMQAICIGABExAIiIAUBEDAAiYgAQEQOAiBgARMQAICIGABExAIiIAUBEDAAiYgAQEQOAiBgARMQAICIGABExAIiIAUBEDAAiYgAQEQOAiBgARMQAICIGABExAIiIAUBEDAAiYgAQEQOAiBgARMQAIGIAsAiIGABExAAg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//HK6n3QaNl1q9U8GMTcQycgOqVC6X0iRGo6ZIUHxp59kPuLw4YRxypp+TuwDw4N5Kn4xwvwz3rumG0qEN0zoPbpBThdMLL3w9h6MObpt2OPZBVK3/ZQevQELFbIw4dg7M2FPFLZPKPa4p3NAqVXOyjdugFOF2RJEYxd+yHzPLHvO6oC0c4NpXcXiHbtAQjIwgIYuw5AHqlo0AQrbAE0qnNAQmaXQs/e2KydS3JPIbQ9hU18zqPD2JoLY2suK2tTCGgwth+Gsf3wL9sX8jzQ87YD2N6qi4OPBydKYAwAIgYAETEAiIgBQEQMACJiABARA4CIGABEFD/41IqjAqs/h5H909FXAvqWLSwUinut814AIuIpABExAIiIAUBEDAAiYgAQEQOAiBgARMQAICIGABExAIgYACwCIgYAETEAiIgBQEQMACJiABARA4CIGABExAAgIgYAETEAiIgBQEQMACJiABARA4CIGABExAAgIgYAETEAiIgBQEQMACJiABARA4CIGABExAAgIgYAETEAiIgBQEQMACJiABARA4CIGABExAAgIgYAETEAiIgBQEQMACIGABEldADksxiIEtIBBcAilgNRQlqkQMpZADawLIgSyreQeFJpm72rFFKOATAbwAGWC1F8N/sBzITEhW2zf/T8P0BxSmzQAcFSAAAAAElFTkSuQmCC"
  },
  "description": "Track your multimedia articles with ease",
  "containerContexts": [
    "WEB"
  ]
}

___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "selector",
    "displayName": "Selector",
    "simpleValueType": true,
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ],
    "help": "The article is expected in a container located by this CSS selector."
  },
  {
    "type": "PARAM_TABLE",
    "name": "contentTypes",
    "displayName": "Content Types",
    "paramTableColumns": [
      {
        "param": {
          "type": "TEXT",
          "name": "path",
          "displayName": "Content Type Path",
          "simpleValueType": true,
          "valueHint": "myScope.customContentTypeProvider",
          "defaultValue": "",
          "help": "Dot (\".\") separated path from the global scope (window), to the function, that creates the custom Content Type provider. See -> https://github.com/optimics/analytics/tree/master/browser/article-tracker"
        },
        "isUnique": true
      }
    ]
  },
  {
    "type": "CHECKBOX",
    "name": "trackDefaultContentTypes",
    "checkboxText": "Track all Default Content Types",
    "simpleValueType": true,
    "defaultValue": true,
    "alwaysInSummary": true,
    "help": "By default, we track all paragraphs and headings -> https://github.com/optimics/analytics/tree/master/browser/article-tracker"
  },
  {
    "type": "CHECKBOX",
    "name": "staging",
    "checkboxText": "Use staging version",
    "simpleValueType": true,
    "alwaysInSummary": true,
    "help": "If ticked, the template will use unstable version of the Article Tracker."
  },
  {
    "type": "PARAM_TABLE",
    "name": "connectedEvents",
    "displayName": "Event Bindings",
    "paramTableColumns": [
      {
        "param": {
          "type": "SELECT",
          "name": "event",
          "displayName": "Article Tracker Event",
          "macrosInSelect": false,
          "help": "The event name from Article Tracker to subscribe to\n\nhttps://github.com/optimics/analytics/tree/master/browser/article-tracker#user-content-events",
          "selectItems": [
            {
              "value": "consumptionAchievement",
              "displayValue": "Consumption Achievement"
            },
            {
              "value": "typeConsumptionAchievement",
              "displayValue": "Type Consumption Achievement"
            },
            {
              "value": "overtime",
              "displayValue": "Consumption Overtime"
            },
            {
              "value": "consumptionStarted",
              "displayValue": "Consumption Started"
            },
            {
              "value": "consumptionStopped",
              "displayValue": "Consumption Stopped"
            },
            {
              "value": "consumptionStateChanged",
              "displayValue": "Consumption State Changed"
            },
            {
              "value": "elementsAdded",
              "displayValue": "Elements Added"
            },
            {
              "value": "elementsConsumed",
              "displayValue": "Elements Consumed"
            },
            {
              "value": "elementsDisplayed",
              "displayValue": "Elements Displayed"
            }
          ],
          "simpleValueType": true
        },
        "isUnique": false
      },
      {
        "param": {
          "type": "TEXT",
          "name": "gtmEvent",
          "displayName": "GTM Event",
          "simpleValueType": true,
          "defaultValue": "",
          "help": "The \"event\", that will be pushed to the Data Layer",
          "valueValidators": [
            {
              "type": "NON_EMPTY"
            }
          ]
        },
        "isUnique": false
      },
      {
        "param": {
          "type": "SELECT",
          "name": "contentArchetype",
          "displayName": "Content Archetype",
          "simpleValueType": true,
          "valueHint": "",
          "help": "This event will fire only for selected content archetype.",
          "alwaysInSummary": false,
          "selectItems": [
            {
              "value": "",
              "displayValue": "Any"
            },
            {
              "value": "audio",
              "displayValue": "Audio"
            },
            {
              "value": "image",
              "displayValue": "Image"
            },
            {
              "value": "text",
              "displayValue": "Text"
            },
            {
              "value": "video",
              "displayValue": "Video"
            }
          ],
          "enablingConditions": [
            {
              "paramName": "event",
              "paramValue": "typeConsumptionAchievement",
              "type": "EQUALS"
            }
          ]
        }
      },
      {
        "param": {
          "type": "TEXT",
          "name": "contentType",
          "displayName": "Content Type",
          "simpleValueType": true,
          "valueHint": "",
          "help": "This event will fire only for selected content type.",
          "alwaysInSummary": false,
          "enablingConditions": [
            {
              "paramName": "event",
              "paramValue": "typeConsumptionAchievement",
              "type": "EQUALS"
            }
          ]
        }
      },
      {
        "param": {
          "type": "TEXT",
          "name": "achievedAtLeast",
          "displayName": "Minimal article consumption",
          "simpleValueType": true,
          "valueHint": "",
          "help": "This event will fire only if the article has reached at least specified total consumption percentage.",
          "alwaysInSummary": false,
          "enablingConditions": [
            {
              "paramName": "event",
              "paramValue": "consumptionAchievement",
              "type": "EQUALS"
            },
            {
              "paramName": "event",
              "paramValue": "typeConsumptionAchievement",
              "type": "EQUALS"
            },
            {
              "paramName": "event",
              "paramValue": "consumptionStarted",
              "type": "EQUALS"
            },
            {
              "paramName": "event",
              "paramValue": "consumptionStopped",
              "type": "EQUALS"
            },
            {
              "paramName": "event",
              "paramValue": "overtime",
              "type": "EQUALS"
            }
          ]
        },
        "isUnique": false
      },
      {
        "param": {
          "type": "TEXT",
          "name": "contentTypeAchievedAtLeast",
          "displayName": "Minimal (arche)type consumption",
          "simpleValueType": true,
          "valueHint": "",
          "help": "This event will fire only if the specified content type or archetype has reached at least specified total consumption percentage.",
          "alwaysInSummary": false,
          "enablingConditions": [
            {
              "paramName": "event",
              "paramValue": "typeConsumptionAchievement",
              "type": "EQUALS"
            }
          ]
        },
        "isUnique": false
      },
      {
        "param": {
          "type": "CHECKBOX",
          "name": "once",
          "checkboxText": "Fire once",
          "simpleValueType": true,
          "help": "The selected event connector will be fired only once and then never again",
          "alwaysInSummary": false
        },
        "isUnique": false
      },
      {
        "param": {
          "type": "TEXT",
          "name": "props",
          "displayName": "Extra properties",
          "simpleValueType": true,
          "help": "JSON Encoded extra properties, that will be passed to the Data Layer push",
          "valueHint": "{\"matrixID\":91}"
        },
        "isUnique": false
      }
    ],
    "valueValidators": [
      {
        "type": "TABLE_ROW_COUNT",
        "args": [
          1
        ]
      }
    ],
    "alwaysInSummary": true
  },
  {
    "type": "TEXT",
    "name": "extraProps",
    "displayName": "Extra Properties",
    "simpleValueType": true,
    "help": "Extra properties, that should be added to all of the Article Tracker events. Encoded in JSON.",
    "valueHint": "{\"content_title\": \"{{Content Title}}\"}"
  },
  {
    "type": "TEXT",
    "name": "intersectionThreshold",
    "defaultValue": "0.75",
    "displayName": "Intersection Threshold",
    "simpleValueType": true,
    "valueHint": "",
    "help": "Percentage between 0 and 1 describing the minimal visible content surface, to be considered consumable. Default is 0.75, meaning for example that, if 75 % of a paragraph is visible, it is considered consumable.",
    "alwaysInSummary": true,
    "valueValidators": [
      {
        "type": "DECIMAL"
      }
    ]
  }
]

___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "access_globals",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keys",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "articleTracker.trackArticle"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "articleTracker"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "inject_script",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://storage.googleapis.com/zt-le-scripts/at/0.7.3/main.js"
              },
              {
                "type": 1,
                "string": "https://storage.googleapis.com/zt-le-scripts/at/staging/main.js?*"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]