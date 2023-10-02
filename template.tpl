___SANDBOXED_JS_FOR_WEB_TEMPLATE___

/* This script is written using the Google "sAnDbOxEd jAvAsCrIpT", a shitty
 * invention based on shitty principles. That means, there will be no tests, no
 * linting and no code metrics on this piece. */

const injectScript = require('injectScript');
const copyFromWindow = require('copyFromWindow');
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
  data.staging ? 'https://storage.googleapis.com/zt-le-scripts/carousel/main.jsstaging/main.js?cacheBreak=' + Date.now() : 'https://storage.googleapis.com/zt-le-scripts/carousel/main.js0.5.0/main.js',
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
  "brand": {
    "id": "optimics",
    "displayName": "Optimics"
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
          "type": "TEXT",
          "name": "event",
          "displayName": "Article Tracker Event",
          "simpleValueType": true,
          "help": "The event name from Article Tracker to subscribe to\n\nhttps://github.com/optimics/analytics/tree/master/browser/article-tracker#user-content-events",
          "valueHint": "consumptionAchievement",
          "valueValidators": [
            {
              "type": "NON_EMPTY"
            }
          ]
        },
        "isUnique": true
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
                "string": "https://storage.googleapis.com/zt-le-scripts/carousel/main.js0.5.0/main.js"
              },
              {
                "type": 1,
                "string": "https://storage.googleapis.com/zt-le-scripts/carousel/main.jsstaging/main.js"
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