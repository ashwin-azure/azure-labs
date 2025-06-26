## 🔧 Step-by-Step: Assign Azure Tagging Policy

### 1. Go to Azure Portal → Policy
### 2. Click on **Definitions** → + **Policy definition**
- Name: Require Department Tag
- Category: Tagging
- Paste the JSON from tagging-policy.json

### 3. Assign Policy
- Go to **Assignments** → + Assign Policy
- Scope: Choose Subscription or Resource Group
- Exclusions: Optional
- Parameters: Required tag name = `Department`

### 4. Validation
- Create a test resource without tag → should fail.
- Create with tag `Department = IT` → should succeed.

### 5. Monitoring
- Check Compliance tab to view evaluated resources.
