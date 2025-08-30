<mxfile host="app.diagrams.net" agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36" version="28.1.1">
  <diagram name="Page-1" id="m-tuDBo2wGDl6CbzZ78T">
    <mxGraphModel grid="1" page="1" gridSize="10" guides="1" tooltips="1" connect="1" arrows="1" fold="1" pageScale="1" pageWidth="850" pageHeight="1100" math="0" shadow="0">
      <root>
        <mxCell id="0" />
        <mxCell id="1" parent="0" />
        <mxCell id="JFzhZYqBWozQ5bRKo41J-16" value="User" style="swimlane;fontStyle=1;align=center;verticalAlign=top;childLayout=stackLayout;horizontal=1;startSize=30;horizontalStack=0;resizeParent=1;resizeParentMax=0;resizeLast=0;collapsible=1;marginBottom=0;" vertex="1" parent="1">
          <mxGeometry x="-10" y="60" width="230" height="238" as="geometry" />
        </mxCell>
        <mxCell id="JFzhZYqBWozQ5bRKo41J-17" value="user_id (PK, UUID)" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;" vertex="1" parent="JFzhZYqBWozQ5bRKo41J-16">
          <mxGeometry y="30" width="230" height="26" as="geometry" />
        </mxCell>
        <mxCell id="JFzhZYqBWozQ5bRKo41J-18" value="first_name (VARCHAR NOT NULL)" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;" vertex="1" parent="JFzhZYqBWozQ5bRKo41J-16">
          <mxGeometry y="56" width="230" height="26" as="geometry" />
        </mxCell>
        <mxCell id="JFzhZYqBWozQ5bRKo41J-19" value="last_name (VARCHAR NOT NULL)" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;" vertex="1" parent="JFzhZYqBWozQ5bRKo41J-16">
          <mxGeometry y="82" width="230" height="26" as="geometry" />
        </mxCell>
        <mxCell id="JFzhZYqBWozQ5bRKo41J-20" value="email (VARCHAR UNIQUE NOT NULL)" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;" vertex="1" parent="JFzhZYqBWozQ5bRKo41J-16">
          <mxGeometry y="108" width="230" height="26" as="geometry" />
        </mxCell>
        <mxCell id="JFzhZYqBWozQ5bRKo41J-21" value="password_hash (VARCHAR NOT NULL)" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;" vertex="1" parent="JFzhZYqBWozQ5bRKo41J-16">
          <mxGeometry y="134" width="230" height="26" as="geometry" />
        </mxCell>
        <mxCell id="JFzhZYqBWozQ5bRKo41J-22" value="phone_number (VARCHAR NULL)" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;" vertex="1" parent="JFzhZYqBWozQ5bRKo41J-16">
          <mxGeometry y="160" width="230" height="26" as="geometry" />
        </mxCell>
        <mxCell id="JFzhZYqBWozQ5bRKo41J-23" value="role (ENUM NOT NULL)" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;" vertex="1" parent="JFzhZYqBWozQ5bRKo41J-16">
          <mxGeometry y="186" width="230" height="26" as="geometry" />
        </mxCell>
        <mxCell id="JFzhZYqBWozQ5bRKo41J-24" value="created_at (TIMESTAMP DEFAULT)" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;" vertex="1" parent="JFzhZYqBWozQ5bRKo41J-16">
          <mxGeometry y="212" width="230" height="26" as="geometry" />
        </mxCell>
        <mxCell id="JFzhZYqBWozQ5bRKo41J-25" value="Property" style="swimlane;fontStyle=1;align=center;verticalAlign=top;childLayout=stackLayout;horizontal=1;startSize=30;horizontalStack=0;resizeParent=1;resizeParentMax=0;resizeLast=0;collapsible=1;marginBottom=0;" vertex="1" parent="1">
          <mxGeometry x="660" y="150" width="160" height="212" as="geometry" />
        </mxCell>
        <mxCell id="JFzhZYqBWozQ5bRKo41J-26" value="property_id (PK, UUID)" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;" vertex="1" parent="JFzhZYqBWozQ5bRKo41J-25">
          <mxGeometry y="30" width="160" height="26" as="geometry" />
        </mxCell>
        <mxCell id="JFzhZYqBWozQ5bRKo41J-27" value="host_id (FK to User)" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;" vertex="1" parent="JFzhZYqBWozQ5bRKo41J-25">
          <mxGeometry y="56" width="160" height="26" as="geometry" />
        </mxCell>
        <mxCell id="JFzhZYqBWozQ5bRKo41J-28" value="name (VARCHAR NOT NULL)" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;" vertex="1" parent="JFzhZYqBWozQ5bRKo41J-25">
          <mxGeometry y="82" width="160" height="26" as="geometry" />
        </mxCell>
        <mxCell id="JFzhZYqBWozQ5bRKo41J-29" value="description (TEXT NOT NULL)" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;" vertex="1" parent="JFzhZYqBWozQ5bRKo41J-25">
          <mxGeometry y="108" width="160" height="26" as="geometry" />
        </mxCell>
        <mxCell id="JFzhZYqBWozQ5bRKo41J-30" value="location (VARCHAR NOT NULL)" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;" vertex="1" parent="JFzhZYqBWozQ5bRKo41J-25">
          <mxGeometry y="134" width="160" height="26" as="geometry" />
        </mxCell>
        <mxCell id="JFzhZYqBWozQ5bRKo41J-31" value="pricepernight (DECIMAL NOT NULL)" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;" vertex="1" parent="JFzhZYqBWozQ5bRKo41J-25">
          <mxGeometry y="160" width="160" height="26" as="geometry" />
        </mxCell>
        <mxCell id="JFzhZYqBWozQ5bRKo41J-32" value="created_at (TIMESTAMP DEFAULT)" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;" vertex="1" parent="JFzhZYqBWozQ5bRKo41J-25">
          <mxGeometry y="186" width="160" height="26" as="geometry" />
        </mxCell>
        <mxCell id="JFzhZYqBWozQ5bRKo41J-33" value="Booking" style="swimlane;fontStyle=1;align=center;verticalAlign=top;childLayout=stackLayout;horizontal=1;startSize=30;horizontalStack=0;resizeParent=1;resizeParentMax=0;resizeLast=0;collapsible=1;marginBottom=0;" vertex="1" parent="1">
          <mxGeometry x="360" y="520" width="160" height="212" as="geometry" />
        </mxCell>
        <mxCell id="JFzhZYqBWozQ5bRKo41J-34" value="booking_id (PK, UUID)" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;" vertex="1" parent="JFzhZYqBWozQ5bRKo41J-33">
          <mxGeometry y="30" width="160" height="26" as="geometry" />
        </mxCell>
        <mxCell id="JFzhZYqBWozQ5bRKo41J-35" value="property_id (FK to Property)" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;" vertex="1" parent="JFzhZYqBWozQ5bRKo41J-33">
          <mxGeometry y="56" width="160" height="26" as="geometry" />
        </mxCell>
        <mxCell id="JFzhZYqBWozQ5bRKo41J-36" value="user_id (FK to User)" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;" vertex="1" parent="JFzhZYqBWozQ5bRKo41J-33">
          <mxGeometry y="82" width="160" height="26" as="geometry" />
        </mxCell>
        <mxCell id="JFzhZYqBWozQ5bRKo41J-37" value="start_date (DATE NOT NULL)" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;" vertex="1" parent="JFzhZYqBWozQ5bRKo41J-33">
          <mxGeometry y="108" width="160" height="26" as="geometry" />
        </mxCell>
        <mxCell id="JFzhZYqBWozQ5bRKo41J-38" value="end_date (DATE NOT NULL)" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;" vertex="1" parent="JFzhZYqBWozQ5bRKo41J-33">
          <mxGeometry y="134" width="160" height="26" as="geometry" />
        </mxCell>
        <mxCell id="JFzhZYqBWozQ5bRKo41J-39" value="total_price (DECIMAL NOT NULL)" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;" vertex="1" parent="JFzhZYqBWozQ5bRKo41J-33">
          <mxGeometry y="160" width="160" height="26" as="geometry" />
        </mxCell>
        <mxCell id="JFzhZYqBWozQ5bRKo41J-40" value="status (ENUM NOT NULL)" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;" vertex="1" parent="JFzhZYqBWozQ5bRKo41J-33">
          <mxGeometry y="186" width="160" height="26" as="geometry" />
        </mxCell>
        <mxCell id="JFzhZYqBWozQ5bRKo41J-41" value="Payment" style="swimlane;fontStyle=1;align=center;verticalAlign=top;childLayout=stackLayout;horizontal=1;startSize=30;horizontalStack=0;resizeParent=1;resizeParentMax=0;resizeLast=0;collapsible=1;marginBottom=0;" vertex="1" parent="1">
          <mxGeometry x="640" y="520" width="160" height="160" as="geometry" />
        </mxCell>
        <mxCell id="JFzhZYqBWozQ5bRKo41J-42" value="payment_id (PK, UUID)" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;" vertex="1" parent="JFzhZYqBWozQ5bRKo41J-41">
          <mxGeometry y="30" width="160" height="26" as="geometry" />
        </mxCell>
        <mxCell id="JFzhZYqBWozQ5bRKo41J-43" value="booking_id (FK to Booking)" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;" vertex="1" parent="JFzhZYqBWozQ5bRKo41J-41">
          <mxGeometry y="56" width="160" height="26" as="geometry" />
        </mxCell>
        <mxCell id="JFzhZYqBWozQ5bRKo41J-44" value="amount (DECIMAL NOT NULL)" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;" vertex="1" parent="JFzhZYqBWozQ5bRKo41J-41">
          <mxGeometry y="82" width="160" height="26" as="geometry" />
        </mxCell>
        <mxCell id="JFzhZYqBWozQ5bRKo41J-45" value="payment_date (TIMESTAMP DEFAULT)" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;" vertex="1" parent="JFzhZYqBWozQ5bRKo41J-41">
          <mxGeometry y="108" width="160" height="26" as="geometry" />
        </mxCell>
        <mxCell id="JFzhZYqBWozQ5bRKo41J-46" value="payment_method (ENUM NOT NULL)" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;" vertex="1" parent="JFzhZYqBWozQ5bRKo41J-41">
          <mxGeometry y="134" width="160" height="26" as="geometry" />
        </mxCell>
        <mxCell id="JFzhZYqBWozQ5bRKo41J-47" value="Review" style="swimlane;fontStyle=1;align=center;verticalAlign=top;childLayout=stackLayout;horizontal=1;startSize=30;horizontalStack=0;resizeParent=1;resizeParentMax=0;resizeLast=0;collapsible=1;marginBottom=0;" vertex="1" parent="1">
          <mxGeometry x="10" y="540" width="160" height="160" as="geometry" />
        </mxCell>
        <mxCell id="JFzhZYqBWozQ5bRKo41J-48" value="review_id (PK, UUID)" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;" vertex="1" parent="JFzhZYqBWozQ5bRKo41J-47">
          <mxGeometry y="30" width="160" height="26" as="geometry" />
        </mxCell>
        <mxCell id="JFzhZYqBWozQ5bRKo41J-49" value="property_id (FK to Property)" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;" vertex="1" parent="JFzhZYqBWozQ5bRKo41J-47">
          <mxGeometry y="56" width="160" height="26" as="geometry" />
        </mxCell>
        <mxCell id="JFzhZYqBWozQ5bRKo41J-50" value="user_id (FK to User)" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;" vertex="1" parent="JFzhZYqBWozQ5bRKo41J-47">
          <mxGeometry y="82" width="160" height="26" as="geometry" />
        </mxCell>
        <mxCell id="JFzhZYqBWozQ5bRKo41J-51" value="rating (INT 1-5 NOT NULL)" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;" vertex="1" parent="JFzhZYqBWozQ5bRKo41J-47">
          <mxGeometry y="108" width="160" height="26" as="geometry" />
        </mxCell>
        <mxCell id="JFzhZYqBWozQ5bRKo41J-52" value="comment (TEXT NOT NULL)" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;" vertex="1" parent="JFzhZYqBWozQ5bRKo41J-47">
          <mxGeometry y="134" width="160" height="26" as="geometry" />
        </mxCell>
        <mxCell id="JFzhZYqBWozQ5bRKo41J-53" value="Message" style="swimlane;fontStyle=1;align=center;verticalAlign=top;childLayout=stackLayout;horizontal=1;startSize=30;horizontalStack=0;resizeParent=1;resizeParentMax=0;resizeLast=0;collapsible=1;marginBottom=0;" vertex="1" parent="1">
          <mxGeometry x="340" y="10" width="160" height="160" as="geometry" />
        </mxCell>
        <mxCell id="JFzhZYqBWozQ5bRKo41J-54" value="message_id (PK, UUID)" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;" vertex="1" parent="JFzhZYqBWozQ5bRKo41J-53">
          <mxGeometry y="30" width="160" height="26" as="geometry" />
        </mxCell>
        <mxCell id="JFzhZYqBWozQ5bRKo41J-55" value="sender_id (FK to User)" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;" vertex="1" parent="JFzhZYqBWozQ5bRKo41J-53">
          <mxGeometry y="56" width="160" height="26" as="geometry" />
        </mxCell>
        <mxCell id="JFzhZYqBWozQ5bRKo41J-56" value="recipient_id (FK to User)" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;" vertex="1" parent="JFzhZYqBWozQ5bRKo41J-53">
          <mxGeometry y="82" width="160" height="26" as="geometry" />
        </mxCell>
        <mxCell id="JFzhZYqBWozQ5bRKo41J-57" value="message_body (TEXT NOT NULL)" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;" vertex="1" parent="JFzhZYqBWozQ5bRKo41J-53">
          <mxGeometry y="108" width="160" height="26" as="geometry" />
        </mxCell>
        <mxCell id="JFzhZYqBWozQ5bRKo41J-58" value="sent_at (TIMESTAMP DEFAULT)" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;" vertex="1" parent="JFzhZYqBWozQ5bRKo41J-53">
          <mxGeometry y="134" width="160" height="26" as="geometry" />
        </mxCell>
        <mxCell id="W33MigCk5qmngtFE_PSh-3" value="" style="edgeStyle=entityRelationEdgeStyle;fontSize=12;html=1;endArrow=ERoneToMany;rounded=0;entryX=0;entryY=0.769;entryDx=0;entryDy=0;entryPerimeter=0;exitX=1;exitY=0.5;exitDx=0;exitDy=0;" edge="1" parent="1" source="JFzhZYqBWozQ5bRKo41J-21" target="JFzhZYqBWozQ5bRKo41J-26">
          <mxGeometry width="100" height="100" relative="1" as="geometry">
            <mxPoint x="330" y="320" as="sourcePoint" />
            <mxPoint x="430" y="220" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="W33MigCk5qmngtFE_PSh-4" value="" style="edgeStyle=entityRelationEdgeStyle;fontSize=12;html=1;endArrow=ERoneToMany;rounded=0;exitX=1;exitY=0.5;exitDx=0;exitDy=0;" edge="1" parent="1" source="JFzhZYqBWozQ5bRKo41J-32">
          <mxGeometry width="100" height="100" relative="1" as="geometry">
            <mxPoint x="700" y="370" as="sourcePoint" />
            <mxPoint x="360" y="540" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="W33MigCk5qmngtFE_PSh-5" value="" style="edgeStyle=entityRelationEdgeStyle;fontSize=12;html=1;endArrow=ERmandOne;startArrow=ERmandOne;rounded=0;exitX=1;exitY=0.5;exitDx=0;exitDy=0;" edge="1" parent="1" source="JFzhZYqBWozQ5bRKo41J-38">
          <mxGeometry width="100" height="100" relative="1" as="geometry">
            <mxPoint x="530" y="650" as="sourcePoint" />
            <mxPoint x="640" y="570" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="W33MigCk5qmngtFE_PSh-6" value="" style="edgeStyle=entityRelationEdgeStyle;fontSize=12;html=1;endArrow=ERoneToMany;rounded=0;" edge="1" parent="1">
          <mxGeometry width="100" height="100" relative="1" as="geometry">
            <mxPoint x="810" y="309" as="sourcePoint" />
            <mxPoint x="10" y="570" as="targetPoint" />
            <Array as="points">
              <mxPoint x="380" y="348" />
              <mxPoint x="380" y="338" />
              <mxPoint x="390" y="328" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="W33MigCk5qmngtFE_PSh-7" value="" style="edgeStyle=entityRelationEdgeStyle;fontSize=12;html=1;endArrow=ERoneToMany;rounded=0;exitX=1;exitY=0.013;exitDx=0;exitDy=0;exitPerimeter=0;" edge="1" parent="1" source="JFzhZYqBWozQ5bRKo41J-23">
          <mxGeometry width="100" height="100" relative="1" as="geometry">
            <mxPoint x="180" y="440" as="sourcePoint" />
            <mxPoint x="10" y="652.6666259765625" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="W33MigCk5qmngtFE_PSh-8" value="" style="shape=link;html=1;rounded=0;" edge="1" parent="1">
          <mxGeometry relative="1" as="geometry">
            <mxPoint x="220" y="110" as="sourcePoint" />
            <mxPoint x="340" y="110" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="W33MigCk5qmngtFE_PSh-9" value="M" style="resizable=0;html=1;whiteSpace=wrap;align=left;verticalAlign=bottom;" connectable="0" vertex="1" parent="W33MigCk5qmngtFE_PSh-8">
          <mxGeometry x="-1" relative="1" as="geometry" />
        </mxCell>
        <mxCell id="W33MigCk5qmngtFE_PSh-10" value="N" style="resizable=0;html=1;whiteSpace=wrap;align=right;verticalAlign=bottom;" connectable="0" vertex="1" parent="W33MigCk5qmngtFE_PSh-8">
          <mxGeometry x="1" relative="1" as="geometry" />
        </mxCell>
      </root>
    </mxGraphModel>
  </diagram>
</mxfile>
