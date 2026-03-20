#!/bin/bash
# Generate React component template
cat << 'EOF'
import React, { useState } from 'react';

export const MyComponent = ({ title, onAction }) => {
  const [isActive, setIsActive] = useState(false);

  return (
    <div className="my-component">
      <h2>{title}</h2>
      <button
        onClick={() => {
          setIsActive(!isActive);
          onAction?.();
        }}
        className={isActive ? 'active' : ''}
      >
        {isActive ? 'Active' : 'Inactive'}
      </button>
    </div>
  );
};

export default MyComponent;
EOF
